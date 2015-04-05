<?php

namespace Karpatska\FormBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * File
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class File
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="path", type="text")
     */
    private $path;

    /**
     * @Assert\File(
     *     maxSize = "2M",
     *     mimeTypes = {"application/pdf", "application/x-pdf", "image/jpeg", "image/JPEG", "image/PNG", "image/png", "application/excel", "application/vnd.ms-excel", "application/x-excel", "application/x-msexcel", "application/msword"},
     *     mimeTypesMessage = "Prosím vkladajte len povolené formáty!"
     * )
     */
    private $file;

    /**
     * @ORM\ManyToOne(targetEntity="Company", inversedBy="file")
     * @ORM\JoinColumn(name="company_id", referencedColumnName="id")
     **/
    private $company;

    /**
     * @ORM\ManyToOne(targetEntity="Form", inversedBy="file")
     * @ORM\JoinColumn(name="form_id", referencedColumnName="id")
     **/
    private $form;

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return File
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set path
     *
     * @param string $path
     * @return File
     */
    public function setPath($path)
    {
        $this->path = $path;

        return $this;
    }

    /**
     * Get path
     *
     * @return string 
     */
    public function getPath()
    {
        return $this->path;
    }

    public function getAbsolutePath($ico)
    {
        return null === $this->path
            ? null
            : $this->getUploadRootDir($ico).'/'.$this->path;
    }

    public function getWebPath()
    {
        return null === $this->path
            ? null
            : $this->getUploadDir().'/'.$this->path;
    }

    protected function getUploadRootDir($ico)
    {
        // the absolute directory path where uploaded
        // documents should be saved
        return __DIR__.'/../../../../web/'.$this->getUploadDir().'/'.$ico;
    }

    protected function getUploadDir()
    {
        // get rid of the __DIR__ so it doesn't screw up
        // when displaying uploaded doc/image in the view.
        return 'files';
    }

    /**
     * Sets file.
     *
     * @param UploadedFile $file
     */
    public function setFile(UploadedFile $file = null)
    {
        $this->file = $file;
    }

    /**
     * Get file.
     *
     * @return UploadedFile
     */
    public function getFile()
    {
        return $this->file;
    }
    public function upload($ico)
    {
        // the file property can be empty if the field is not required
        if (null === $this->getFile()) {
            return;
        }

        // use the original file name here but you should
        // sanitize it at least to avoid any security issues

        // move takes the target directory and then the
        // target filename to move to
        $this->getFile()->move(
            $this->getUploadRootDir($ico),
            $this->getFile()->getClientOriginalName()
        );

        // set the path property to the filename where you've saved the file
        $this->path = $this->getFile()->getClientOriginalName();

        // clean up the file property as you won't need it anymore
        $this->file = null;
    }



    /**
     * Set Company
     *
     * @param Company $company
     * @return $this
     */
    public function setCompany(\Karpatska\FormBundle\Entity\Company $company = null)
    {
        $this->company = $company;

        return $this;
    }

    /**
     * Get company
     *
     * @return mixed
     */
    public function getCompany()
    {
        return $this->company;
    }

    /**
     * Set form
     *
     * @param \Karpatska\FormBundle\Entity\Form $form
     * @return Question
     */
    public function setForm(\Karpatska\FormBundle\Entity\Form $form = null)
    {
        $this->form = $form;

        return $this;
    }

    /**
     * Get form
     *
     * @return \Karpatska\FormBundle\Entity\Form
     */
    public function getForm()
    {
        return $this->form;
    }
}

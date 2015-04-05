<?php

namespace Karpatska\FormBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Form
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Form
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
    * @var \Doctrine\Common\Collections\Collection
    *
    * @ORM\OneToMany(targetEntity="Question", mappedBy="form", cascade={"persist", "merge", "remove", "refresh"})
    * @ORM\OrderBy({"position" = "ASC"})
    */
    private $question;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="text")
     */
    private $name;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\OneToMany(targetEntity="RealAnswer", mappedBy="form", cascade={"persist", "merge", "remove", "refresh"})
     */
    private $realAnswers;

    /**
     * @ORM\OneToMany(targetEntity="File", mappedBy="form")
     **/
    private $file;


    public function __construct() {
        $this->question = new \Doctrine\Common\Collections\ArrayCollection();
        $this->realAnswers = new \Doctrine\Common\Collections\ArrayCollection();
        $this->file = new \Doctrine\Common\Collections\ArrayCollection();
    }

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
     * @return Form
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
     * Add question
     *
     * @param \Karpatska\FormBundle\Entity\Form $question
     * @return Form
     */
    public function addQuestion(\Karpatska\FormBundle\Entity\Form $question)
    {
        $this->question[] = $question;

        return $this;
    }

    /**
     * Remove question
     *
     * @param \Karpatska\FormBundle\Entity\Form $question
     */
    public function removeQuestion(\Karpatska\FormBundle\Entity\Form $question)
    {
        $this->question->removeElement($question);
    }

    /**
     * Get question
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getQuestion()
    {
        return $this->question;
    }

    /**
     * Add realAnswers
     *
     * @param \Karpatska\FormBundle\Entity\RealAnswer $realAnswers
     * @return Form
     */
    public function addRealAnswer(\Karpatska\FormBundle\Entity\RealAnswer $realAnswers)
    {
        $this->realAnswers[] = $realAnswers;

        return $this;
    }

    /**
     * Remove realAnswers
     *
     * @param \Karpatska\FormBundle\Entity\RealAnswer $realAnswers
     */
    public function removeRealAnswer(\Karpatska\FormBundle\Entity\RealAnswer $realAnswers)
    {
        $this->realAnswers->removeElement($realAnswers);
    }

    /**
     * Get realAnswers
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getRealAnswers()
    {
        return $this->realAnswers;
    }
}

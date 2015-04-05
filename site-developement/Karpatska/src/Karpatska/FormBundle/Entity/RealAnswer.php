<?php

namespace Karpatska\FormBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * RealAnswer
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class RealAnswer
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
     * @var integer
     *
     * @ORM\ManyToOne(targetEntity="Form", inversedBy="realAnswers")
     * @ORM\JoinColumn(name="form_id", referencedColumnName="id")
     */
    private $form;

    /**
     * @var integer
     *
     * @ORM\ManyToOne(targetEntity="Company", inversedBy="realAnswers")
     * @ORM\JoinColumn(name="company_id", referencedColumnName="id")
     */
    private $company;

    /**
     * @var string
     *
     * @ORM\Column(name="answer_text", type="text")
     */
    private $answerText;

    /**
     * @var string
     *
     * @ORM\Column(name="json", type="string", length=5, nullable=true)
     */
    private $json;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToOne(targetEntity="Question", inversedBy="realAnswer")
     * @ORM\JoinColumn(name="question_id", referencedColumnName="id")
     */
    private $question;

    public function __construct ()
    {
        $this->form = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set answerText
     *
     * @param string $answerText
     * @return RealAnswer
     */
    public function setAnswerText($answerText)
    {
        $this->answerText = $answerText;

        return $this;
    }

    /**
     * Get answerText
     *
     * @return string 
     */
    public function getAnswerText()
    {
        return $this->answerText;
    }

    /**
     * Set json
     *
     * @param string $json
     * @return RealAnswer
     */
    public function setJson($json)
    {
        $this->json = $json;

        return $this;
    }

    /**
     * Get json
     *
     * @return string 
     */
    public function getJson()
    {
        return $this->json;
    }

    /**
     * Set question
     *
     * @param \Karpatska\FormBundle\Entity\Question $question
     * @return RealAnswer
     */
    public function setQuestion(\Karpatska\FormBundle\Entity\Question $question = null)
    {
        $this->question = $question;

        return $this;
    }

    /**
     * Get question
     *
     * @return \Karpatska\FormBundle\Entity\Question 
     */
    public function getQuestion()
    {
        return $this->question;
    }

    /**
     * Set company
     *
     * @param \Karpatska\FormBundle\Entity\Company $company
     * @return RealAnswer
     */
    public function setCompany(\Karpatska\FormBundle\Entity\Company $company = null)
    {
        $this->company = $company;

        return $this;
    }

    /**
     * Get company
     *
     * @return \Karpatska\FormBundle\Entity\Company 
     */
    public function getCompany()
    {
        return $this->company;
    }

    /**
     * Set form
     *
     * @param \Karpatska\FormBundle\Entity\Form $form
     * @return RealAnswer
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

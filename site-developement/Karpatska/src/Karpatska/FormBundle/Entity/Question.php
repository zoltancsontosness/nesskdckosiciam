<?php

namespace Karpatska\FormBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Karpatska\FormBundle\Entity\Form;

/**
 * Question
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Question
{
    public function __construct() {
        $this->answer= new ArrayCollection();
    }
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\OneToMany(targetEntity="Answers", mappedBy="question")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="questionText", type="text")
     */
    private $questionText;

    private $answer;

    /**
     *
     * @ORM\ManyToOne(targetEntity="Form", inversedBy="question")
     * @ORM\JoinColumn(name="formId", referencedColumnName="id")
     */
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
     * Set question
     *
     * @param string $questionText
     * @return Question
     */
    public function setQuestionText($questionText)
    {
        $this->questionText = $questionText;

        return $this;
    }

    /**
     * Get questionText
     *
     * @return string 
     */
    public function getQuestionText()
    {
        return $this->$questionText;
    }

    /**
     * Set form
     *
     * @param integer $form
     * @return Question
     */
    public function setForm($form)
    {
        $this->form = $form;

        return $this;
    }

    /**
     * Get form
     *
     * @return integer 
     */
    public function getForm()
    {
        return $this->form;
    }
}

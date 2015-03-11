<?php

namespace Karpatska\FormBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Karpatska\FormBundle\Entity\Question;

/**
 * Answers
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Answers
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
     * @ORM\Column(name="answerType", type="text")
     */
    private $answerType;

    /**
     * @var string
     *
     * @ORM\Column(name="answerText", type="text")
     */
    private $answerText;

    /**
     * @var integer
     *
     * @ORM\ManyToOne(targetEntity="Question", inversedBy="answer")
     * @ORM\JoinColumn(name="question_id", referencedColumnName="id")
     */
    private $question;

    public function __construct() {
        $this->question = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set answerType
     *
     * @param string $answerType
     * @return Answers
     */
    public function setAnswerType($answerType)
    {
        $this->answerType = $answerType;

        return $this;
    }

    /**
     * Get answerType
     *
     * @return string 
     */
    public function getAnswerType()
    {
        return $this->answerType;
    }

    /**
     * Set answerText
     *
     * @param string $answerText
     * @return Answers
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
     * Set question
     *
     * @param \Karpatska\FormBundle\Entity\Question $question
     * @return Answers
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
}

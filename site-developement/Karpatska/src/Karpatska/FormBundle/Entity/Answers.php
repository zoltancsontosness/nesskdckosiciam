<?php

namespace Karpatska\FormBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

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
     * @ORM\Column(name="answerText", type="text")
     */
    private $answerText;

    /**
     * @var integer
     *
     * @ORM\ManyToOne(targetEntity="Question", inversedBy="answer")
     * @ORM\JoinColumn(name="questionId", referencedColumnName="id")
     */
    private $question;


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
     * Set answers
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
     * @param integer $question
     * @return Answers
     */
    public function setQuestion($question)
    {
        $this->question = $question;

        return $this;
    }

    /**
     * Get question
     *
     * @return integer 
     */
    public function getQuestion()
    {
        return $this->question;
    }
}

<?php

namespace Karpatska\FormBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * Validator
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Validator
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
     * @ORM\Column(name="name", type="text")
     */
    private $name;

    /**
     * @var integer
     *
     * @ORM\Column(name="min_length", type="integer", nullable=true)
     */
    private $minLength;

    /**
     * @var integer
     *
     * @ORM\Column(name="max_length", type="integer", nullable=true)
     */
    private $maxLength;

    /**
     * @var string
     *
     * @ORM\Column(name="regex", type="text", nullable=true)
     */
    private $regex;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToOne(targetEntity="Question", inversedBy="validators")
     * @ORM\JoinColumn(name="question_id", referencedColumnName="id")
     */
    private $question;

    public function __construct()
    {
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
     * Set name
     *
     * @param string $name
     * @return Validator
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
     * Set minLength
     *
     * @param integer $minLength
     * @return Validator
     */
    public function setMinLength($minLength)
    {
        $this->minLength = $minLength;

        return $this;
    }

    /**
     * Get minLength
     *
     * @return integer
     */
    public function getMinLength()
    {
        return $this->minLength;
    }

    /**
     * Set maxLength
     *
     * @param integer $maxLength
     * @return Validator
     */
    public function setMaxLength($maxLength)
    {
        $this->maxLength = $maxLength;

        return $this;
    }

    /**
     * Get maxLength
     *
     * @return integer
     */
    public function getMaxLength()
    {
        return $this->maxLength;
    }

    /**
     * Set regex
     *
     * @param string $regex
     * @return Validator
     */
    public function setRegex($regex)
    {
        $this->regex = $regex;

        return $this;
    }

    /**
     * Get regex
     *
     * @return string
     */
    public function getRegex()
    {
        return $this->regex;
    }

    /**
     * Set question
     *
     * @param \Karpatska\FormBundle\Entity\Question $question
     * @return Validator
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

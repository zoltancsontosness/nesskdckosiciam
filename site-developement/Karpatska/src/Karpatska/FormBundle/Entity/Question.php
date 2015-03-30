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
     * @ORM\Column(name="questionText", type="text")
     */
    private $questionText;

    /**
     * @var integer
     *
     * @ORM\Column(name="position", type="integer")
     */
    private $position;

    /**
     * @var string
     *
     * @ORM\Column(name="type", type="string", length=50, options={"default":"question"})
     */
    private $type;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\OneToMany(targetEntity="Answers", mappedBy="question", cascade={"persist", "merge", "remove", "refresh"})
     */
    private $answer;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToOne(targetEntity="Form", inversedBy="question")
     * @ORM\JoinColumn(name="form_id", referencedColumnName="id")
     */
    private $form;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\OneToMany(targetEntity="Validator", mappedBy="question")
     */
    private $validators;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\Column(name="json", type="string", length=5, nullable=true)
     */
    private $json;



    public function __construct() {
        $this->form = new \Doctrine\Common\Collections\ArrayCollection();
        $this->validators = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set questionText
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
        return $this->questionText;
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

    /**
     * Add answer
     *
     * @param \Karpatska\FormBundle\Entity\Answer $answer
     * @return Question
     */
    public function addAnswer(\Karpatska\FormBundle\Entity\Answer $answer)
    {
        $this->answer[] = $answer;

        return $this;
    }

    /**
     * Remove answer
     *
     * @param \Karpatska\FormBundle\Entity\Answer $answer
     */
    public function removeAnswer(\Karpatska\FormBundle\Entity\Answer $answer)
    {
        $this->answer->removeElement($answer);
    }

    /**
     * Get answer
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getAnswer()
    {
        return $this->answer;
    }

    /**
     * Set position
     *
     * @param integer $position
     * @return Question
     */
    public function setPosition($position)
    {
        $this->position = $position;

        return $this;
    }

    /**
     * Get position
     *
     * @return integer
     */
    public function getPosition()
    {
        return $this->position;
    }

    /**
     * Set type
     *
     * @param string $type
     * @return Question
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Get type
     *
     * @return string
     */
    public function getType()
    {
        return $this->type;
    }


    /**
     * Add validators
     *
     * @param \Karpatska\FormBundle\Entity\Validator $validators
     * @return Question
     */
    public function addValidator(\Karpatska\FormBundle\Entity\Validator $validators)
    {
        $this->validators[] = $validators;

        return $this;
    }

    /**
     * Remove validators
     *
     * @param \Karpatska\FormBundle\Entity\Validator $validators
     */
    public function removeValidator(\Karpatska\FormBundle\Entity\Validator $validators)
    {
        $this->validators->removeElement($validators);
    }

    /**
     * Get validators
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getValidators()
    {
        return $this->validators;
    }

    /**
     * Set json
     *
     * @param string $json
     * @return Question
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
}

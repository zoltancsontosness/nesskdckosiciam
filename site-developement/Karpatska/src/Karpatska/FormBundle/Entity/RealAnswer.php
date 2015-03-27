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
     * @ORM\Column(name="form_id", type="integer")
     */
    private $formId;

    /**
     * @var integer
     *
     * @ORM\Column(name="company_id", type="integer")
     */
    private $companyId;

    /**
     * @var integer
     *
     * @ORM\Column(name="question_id", type="integer")
     */
    private $questionId;

    /**
     * @var string
     *
     * @ORM\Column(name="answer_text", type="text")
     */
    private $answerText;

    /**
     * @var string
     *
     * @ORM\Column(name="json", type="string", length=5)
     */
    private $json;


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
     * Set formId
     *
     * @param integer $formId
     * @return RealAnswer
     */
    public function setFormId($formId)
    {
        $this->formId = $formId;

        return $this;
    }

    /**
     * Get formId
     *
     * @return integer 
     */
    public function getFormId()
    {
        return $this->formId;
    }

    /**
     * Set companyId
     *
     * @param integer $companyId
     * @return RealAnswer
     */
    public function setCompanyId($companyId)
    {
        $this->companyId = $companyId;

        return $this;
    }

    /**
     * Get companyId
     *
     * @return integer 
     */
    public function getCompanyId()
    {
        return $this->companyId;
    }

    /**
     * Set questionId
     *
     * @param integer $questionId
     * @return RealAnswer
     */
    public function setQuestionId($questionId)
    {
        $this->questionId = $questionId;

        return $this;
    }

    /**
     * Get questionId
     *
     * @return integer 
     */
    public function getQuestionId()
    {
        return $this->questionId;
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
}

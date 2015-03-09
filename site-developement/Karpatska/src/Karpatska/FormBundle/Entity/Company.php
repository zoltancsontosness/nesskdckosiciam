<?php

namespace Karpatska\FormBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Company
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Company implements UserInterface
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
     * @Assert\NotBlank()
     * @Assert\Regex(pattern="/^\d{8}$/", message = "Iba čísla")
     * @ORM\Column(name="ico", type="integer", unique=true)
     */
    private $ico;

    /**
     * @var string
     * @Assert\NotBlank()
     * @ORM\Column(name="address", type="string", length=255)
     */
    private $address;

    /**
     * @var string
     * @Assert\NotBlank()
     * @ORM\Column(name="county", type="string", length=255)
     */
    private $county;

    /**
     * @var string
     * @Assert\NotBlank()
     * @ORM\Column(name="region", type="string", length=255)
     */
    private $region;

    /**
     * @var string
     * @Assert\NotBlank()
     * @ORM\Column(name="type", type="string", length=255)
     */
    private $type;

    /**
     * @var string
     * @Assert\NotBlank()
     * @ORM\Column(name="bank_name", type="string", length=255)
     */
    private $bankName;

    /**
     * @var string
     * @Assert\NotBlank()
     * @ORM\Column(name="bank_address", type="text")
     */
    private $bankAddress;

    /**
     * @var string
     * @Assert\NotBlank()
     * @Assert\Regex(pattern="/^\d{10}\/\d{4}$/", message = "Iba čísla a lomítko")
     * @ORM\Column(name="account_num", type="string", length=50)
     */
    private $accountNum;

    /**
     * @var string
     * @Assert\NotBlank()
     * @ORM\Column(name="repr_name", type="string", length=255)
     */
    private $reprName;

    /**
     * @var string
     * @Assert\NotBlank()
     * @Assert\Email()
     * @ORM\Column(name="repr_email", type="string", length=255)
     */
    private $reprEmail;

    /**
     * @var string
     * @Assert\NotBlank()
     * @Assert\Regex(pattern="/^(\+42)(1|2)\d{9}$/", message = "Iba čísla, zadávajte v medzinárodnom tvare")
     * @ORM\Column(name="repr_phone", type="string", length=15)
     */
    private $reprPhone;

    /**
     * @var string
     * @Assert\Regex(pattern="/^\d{10}/", message = "Zadajte validné DIČ")
     * @ORM\Column(name="dic", type="integer")
     */
    private $dic;

    /**
     * @var string
     * @Assert\NotBlank()
     * @ORM\Column(name="password", type="string", length=300)
     */
    private $password;
    /**
     * @var string
     *
     * @ORM\Column(name="salt", type="text")
     */
    private $salt;

    public function __construct()
    {
        $this->salt = md5(microtime());
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
     * Set ico
     *
     * @param integer $ico
     * @return Company
     */
    public function setIco($ico)
    {
        $this->ico = $ico;

        return $this;
    }

    /**
     * Get ico
     *
     * @return integer 
     */
    public function getIco()
    {
        return $this->ico;
    }

    /**
     * Set address
     *
     * @param string $address
     * @return Company
     */
    public function setAddress($address)
    {
        $this->address = $address;

        return $this;
    }

    /**
     * Get address
     *
     * @return string 
     */
    public function getAddress()
    {
        return $this->address;
    }

    /**
     * Set county
     *
     * @param string $county
     * @return Company
     */
    public function setCounty($county)
    {
        $this->county = $county;

        return $this;
    }

    /**
     * Get county
     *
     * @return string 
     */
    public function getCounty()
    {
        return $this->county;
    }

    /**
     * Set region
     *
     * @param string $region
     * @return Company
     */
    public function setRegion($region)
    {
        $this->region = $region;

        return $this;
    }

    /**
     * Get region
     *
     * @return string 
     */
    public function getRegion()
    {
        return $this->region;
    }

    /**
     * Set type
     *
     * @param string $type
     * @return Company
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
     * Set bankName
     *
     * @param string $bankName
     * @return Company
     */
    public function setBankName($bankName)
    {
        $this->bankName = $bankName;

        return $this;
    }

    /**
     * Get bankName
     *
     * @return string 
     */
    public function getBankName()
    {
        return $this->bankName;
    }

    /**
     * Set bankAddress
     *
     * @param string $bankAddress
     * @return Company
     */
    public function setBankAddress($bankAddress)
    {
        $this->bankAddress = $bankAddress;

        return $this;
    }

    /**
     * Get bankAddress
     *
     * @return string 
     */
    public function getBankAddress()
    {
        return $this->bankAddress;
    }

    /**
     * Set accountNum
     *
     * @param string $accountNum
     * @return Company
     */
    public function setAccountNum($accountNum)
    {
        $this->accountNum = $accountNum;

        return $this;
    }

    /**
     * Get accountNum
     *
     * @return string 
     */
    public function getAccountNum()
    {
        return $this->accountNum;
    }

    /**
     * Set reprName
     *
     * @param string $reprName
     * @return Company
     */
    public function setReprName($reprName)
    {
        $this->reprName = $reprName;

        return $this;
    }

    /**
     * Get reprName
     *
     * @return string 
     */
    public function getReprName()
    {
        return $this->reprName;
    }

    /**
     * Set reprEmail
     *
     * @param string $reprEmail
     * @return Company
     */
    public function setReprEmail($reprEmail)
    {
        $this->reprEmail = $reprEmail;

        return $this;
    }

    /**
     * Get reprEmail
     *
     * @return string 
     */
    public function getReprEmail()
    {
        return $this->reprEmail;
    }

    /**
     * Set reprPhone
     *
     * @param string $reprPhone
     * @return Company
     */
    public function setReprPhone($reprPhone)
    {
        $this->reprPhone = $reprPhone;

        return $this;
    }

    /**
     * Get reprPhone
     *
     * @return string
     */
    public function getReprPhone()
    {
        return $this->reprPhone;
    }

    /**
     * Set dic
     *
     * @param string $dic
     * @return Company
     */
    public function setDic($dic)
    {
        $this->dic = $dic;

        return $this;
    }

    /**
     * Get dic
     *
     * @return string 
     */
    public function getDic()
    {
        return $this->dic;
    }

    /**
     * Set password
     *
     * @param string $password
     * @return User
     */
    public function setPassword($password)
    {
        $this->password = md5($password);
        return $this;
    }
    /**
     * Get password
     *
     * @return string
     */
    public function getPassword()
    {
        return $this->password;
    }
    /**
     * Set salt
     *
     * @param string $salt
     * @return User
     */
    public function setSalt($salt)
    {
        $this->salt = $salt;
        return $this;
    }
    /**
     * Get salt
     *
     * @return string
     */
    public function getSalt()
    {
        return null;
    }

    public function getRoles()
    {
        return array('ROLE_COMPANY');
    }

    public function eraseCredentials()
    {
    }

   /**
    * Get username
    *
    * @return string
    */
    public function getUsername()
    {
        return $this->ico;
    }
}

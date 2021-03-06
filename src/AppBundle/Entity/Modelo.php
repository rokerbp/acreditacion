<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Modelo
 *
 * @ORM\Table(name="modelo")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\ModeloRepository")
 */
class Modelo
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="string", length=64)
     */
    private $nombre;

    /**
     * One Product has Many Features.
     * @ORM\OneToMany(targetEntity="Factor", mappedBy="modelo", cascade={"persist", "remove"})
     */
    private $facts;

    /**
     * Muchos Modelo tiene Un Programa.
     * @ORM\ManyToOne(targetEntity="Programa", inversedBy="modelos")
     * @ORM\JoinColumn(name="programa", referencedColumnName="id")
     */
    private $programa;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     *
     * @return Modelo
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    public function __construct() {
        $this->facts = new ArrayCollection();
    }

    /**
     * Add fact
     *
     * @param \AppBundle\Entity\Factor $fact
     *
     * @return Modelo
     */
    public function addFact(\AppBundle\Entity\Factor $fact)
    {
        $this->facts[] = $fact;

        return $this;
    }

    /**
     * Remove fact
     *
     * @param \AppBundle\Entity\Factor $fact
     */
    public function removeFact(\AppBundle\Entity\Factor $fact)
    {
        $this->facts->removeElement($fact);
    }

    /**
     * Get facts
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getFacts()
    {
        return $this->facts;
    }

    /**
     * Generates the magic method
     * 
     */
    public function __toString(){
        // to show the name of the Category in the select
        return $this->nombre;
        // to show the id of the Category in the select
        // return $this->id;
    }


    /**
     * Set programa
     *
     * @param \AppBundle\Entity\Programa $programa
     *
     * @return Modelo
     */
    public function setPrograma(\AppBundle\Entity\Programa $programa = null)
    {
        $this->programa = $programa;

        return $this;
    }

    /**
     * Get programa
     *
     * @return \AppBundle\Entity\Programa
     */
    public function getPrograma()
    {
        return $this->programa;
    }

    public function whereis(){
        $hasPrograma = ( empty($this->getNombre()) ) ? '' : $this->getNombre();
        return $hasPrograma;
    }
}

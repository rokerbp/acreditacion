<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Principio
 *
 * @ORM\Table(name="principio")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\PrincipioRepository")
 */
class Principio
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
     * @var string
     *
     * @ORM\Column(name="descripcion", type="text")
     */
    private $descripcion;

    /**
     * Many Principios have Many Caracteristicas.
     * @ORM\ManyToMany(targetEntity="Caracteristica", mappedBy="principios")
     */
    private $caracteristicas;


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
     * @return Principio
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

    /**
     * Set descripcion
     *
     * @param string $descripcion
     *
     * @return Principio
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->caracteristics = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add caracteristic
     *
     * @param \AppBundle\Entity\Caracteristica $caracteristic
     *
     * @return Principio
     */
    public function addCaracteristic(\AppBundle\Entity\Caracteristica $caracteristic)
    {
        $this->caracteristics[] = $caracteristic;

        return $this;
    }

    /**
     * Remove caracteristic
     *
     * @param \AppBundle\Entity\Caracteristica $caracteristic
     */
    public function removeCaracteristic(\AppBundle\Entity\Caracteristica $caracteristic)
    {
        $this->caracteristics->removeElement($caracteristic);
    }

    /**
     * Get caracteristics
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getCaracteristics()
    {
        return $this->caracteristics;
    }
}

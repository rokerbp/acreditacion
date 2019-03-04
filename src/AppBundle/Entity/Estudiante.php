<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Estudiante
 *
 * @ORM\Table(name="estudiante")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\EstudianteRepository")
 */
class Estudiante
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
     * @ORM\Column(name="nombre", type="string", length=128)
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="identificacion", type="string", length=128)
     */
    private $identificacion;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="anioIngreso", type="datetimetz")
     */
    private $anioIngreso;

    /**
     * @var string
     *
     * @ORM\Column(name="estado", type="string", length=16)
     */
    private $estado;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="anioGraduacion", type="datetime", nullable=true)
     */
    private $anioGraduacion;

    /**
     * @var string
     *
     * @ORM\Column(name="ciudadOrigen", type="string", length=128)
     */
    private $ciudadOrigen;

    /**
     * @var string
     *
     * @ORM\Column(name="correo", type="string", length=128, nullable=true)
     */
    private $correo;

    /**
     * @var string
     *
     * @ORM\Column(name="telefono", type="string", length=16, nullable=true)
     */
    private $telefono;

    /**
     * @var string
     *
     * @ORM\Column(name="ciudadActual", type="string", length=128, nullable=true)
     */
    private $ciudadActual;


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
     * @return Estudiante
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
     * Set identificacion
     *
     * @param string $identificacion
     *
     * @return Estudiante
     */
    public function setIdentificacion($identificacion)
    {
        $this->identificacion = $identificacion;

        return $this;
    }

    /**
     * Get identificacion
     *
     * @return string
     */
    public function getIdentificacion()
    {
        return $this->identificacion;
    }

    /**
     * Set anioIngreso
     *
     * @param \DateTime $anioIngreso
     *
     * @return Estudiante
     */
    public function setAnioIngreso($anioIngreso)
    {
        $this->anioIngreso = $anioIngreso;

        return $this;
    }

    /**
     * Get anioIngreso
     *
     * @return \DateTime
     */
    public function getAnioIngreso()
    {
        return $this->anioIngreso;
    }

    /**
     * Set estado
     *
     * @param string $estado
     *
     * @return Estudiante
     */
    public function setEstado($estado)
    {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get estado
     *
     * @return string
     */
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set anioGraduacion
     *
     * @param \DateTime $anioGraduacion
     *
     * @return Estudiante
     */
    public function setAnioGraduacion($anioGraduacion)
    {
        $this->anioGraduacion = $anioGraduacion;

        return $this;
    }

    /**
     * Get anioGraduacion
     *
     * @return \DateTime
     */
    public function getAnioGraduacion()
    {
        return $this->anioGraduacion;
    }

    /**
     * Set ciudadOrigen
     *
     * @param string $ciudadOrigen
     *
     * @return Estudiante
     */
    public function setCiudadOrigen($ciudadOrigen)
    {
        $this->ciudadOrigen = $ciudadOrigen;

        return $this;
    }

    /**
     * Get ciudadOrigen
     *
     * @return string
     */
    public function getCiudadOrigen()
    {
        return $this->ciudadOrigen;
    }

    /**
     * Set correo
     *
     * @param string $correo
     *
     * @return Estudiante
     */
    public function setCorreo($correo)
    {
        $this->correo = $correo;

        return $this;
    }

    /**
     * Get correo
     *
     * @return string
     */
    public function getCorreo()
    {
        return $this->correo;
    }

    /**
     * Set telefono
     *
     * @param string $telefono
     *
     * @return Estudiante
     */
    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;

        return $this;
    }

    /**
     * Get telefono
     *
     * @return string
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     * Set ciudadActual
     *
     * @param string $ciudadActual
     *
     * @return Estudiante
     */
    public function setCiudadActual($ciudadActual)
    {
        $this->ciudadActual = $ciudadActual;

        return $this;
    }

    /**
     * Get ciudadActual
     *
     * @return string
     */
    public function getCiudadActual()
    {
        return $this->ciudadActual;
    }
}


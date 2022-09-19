--- A simple static object that allows all other devices in this world to work in a range.
--- Is not interactable.
--- Renders a circle around itself when hovered over, like a hive with a queen in it.
--- Enables all DS objects in its range when placed. Maybe. Not sure about that yet.
--- Glows to some extent. Probably about as much as a pond-shine does.
--- No collision, because that would be annoying.

-- A table to store everything that the game needs to know about pylons.
RESONANCE_PYLON = {}

-- Object definition properties for api_define_object()
RESONANCE_PYLON.id = "resonance_pylon"
RESONANCE_PYLON.name = "Resonance Pylon"
RESONANCE_PYLON.category = "Tools"
RESONANCE_PYLON.tooltip = "Enables the transmission of matter through Honeycore Resonance in a range."
RESONANCE_PYLON.tools = {"hammer1"}
RESONANCE_PYLON.has_lighting = true

-- Other properties to be used in scripts and such.
RESONANCE_PYLON.RADIUS = 140 -- The operational and draw radius of pylons
RESONANCE_PYLON.HIGHLIGHT_ALPHA = .25 --  The alpha percentage of the transparent highlight circle
RESONANCE_PYLON.SPRITE_PATH = "sprites/resonance_pylon/resonance_pylon_object.png"

--- To be called during the init() hook, defines the actual object.
RESONANCE_PYLON.define = function()
    api_define_object(self, self.SPRITE_PATH, nil)
end

-- Draws the highlight circle for a pylon.
RESONANCE_PYLON.draw_highlight = function(cx, cy)
    -- Draw the outline of the highlight, with no infill.
    api_draw_circle(cx, cy, RESONANCE_PYLON.RADIUS, true,  "OUTLINE")
    -- Draw the infill of the highlight, with low alpha.
    api_draw_circle(cx, xy, RESONANCE_PYLON.RADIUS, false, outline, RESONANCE_PYLON.HIGHLIGHT_ALPHA)
end

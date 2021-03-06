class PWAssaultFire extends PWWeaponFire;

var float LastFireTime;
var float ClickTime;

function InitEffects()
{
    Super.InitEffects();
    if ( FlashEmitter != None )
		Weapon.AttachToBone(FlashEmitter, 'tip');
}

function FlashMuzzleFlash()
{
    local rotator r;
    r.Roll = Rand(65536);
    Weapon.SetBoneRotation('Bone_Flash', r, 0, 1.f);
    Super.FlashMuzzleFlash();
}


simulated function bool AllowFire()
{
    if (Super.AllowFire())
        return true;
    else
    {
        if ( (PlayerController(Instigator.Controller) != None) && (Level.TimeSeconds > ClickTime) )
        {
            Instigator.PlaySound(Sound'WeaponSounds.P1Reload5');
			ClickTime = Level.TimeSeconds + 0.25;
		}
        return false;
    }
}

function StartBerserk()
{
}

function StopBerserk()
{
}

function StartSuperBerserk()
{
}

defaultproperties
{
    AmmoClass=class'MinigunAmmo'
    AmmoPerFire=1
    DamageType=class'DamTypeAssaultBullet'
	DamageTypeHeadShot=class'DamTypeAssaultBullet'
    DamageMin=4
    DamageMax=10
    bPawnRapidFireAnim=true
    Momentum=0.0
	WeaponHipMaxAngle=250
	WeaponADSMaxAngle=50
	
    FireAnim=Fire
    FireEndAnim=None
    FireLoopAnim=None
    FireAnimRate=1
	BulletSpawnOffset=(X=0,Y=0,Z=0)
	ADSBulletSpawnOffset=(X=0,Y=-12.75,Z=0)
    FlashEmitterClass=class'XEffects.AssaultMuzFlash1st'

    FireSound=Sound'WeaponSounds.AssaultRifle.AssaultRifleFire'
    FireForce="AssaultRifleFire"   // jdf

	Spread=1
    SpreadStyle=SS_Random
    PreFireTime=0.0
    FireRate=0.16
    bModeExclusive=true

    BotRefireRate=0.99
    AimError=0

    ShakeOffsetMag=(X=1.0,Y=1.0,Z=1.0)
    ShakeOffsetRate=(X=1000.0,Y=1000.0,Z=1000.0)
    ShakeOffsetTime=2
    ShakeRotMag=(X=50.0,Y=50.0,Z=50.0)
    ShakeRotRate=(X=10000.0,Y=10000.0,Z=10000.0)
    ShakeRotTime=2
}

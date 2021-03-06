class ONSLightBullet extends BallisticBullet;

defaultproperties
{
	Bounces=1
	HeadDamageType=Class'XWeapons.DamTypeSniperHeadShot'
	HeadShotDamageFactor=2.0
	HeadShotHeight=0.62
	bExplode=False
	bHeadShots=False
	HitEffectClass=Class'XEffects.SmallExplosion'
	ExplosionDecal=Class'XEffects.BulletDecal'
	TrailEffect=class'ONSLightBulletTracer'
	BounceFactor=0.85
	RebounceSpeed=0.5
	DamageAtten=5.000000
	ImpactSounds(0)=Sound'XEffects.Impact4Snd'
	ImpactSounds(1)=Sound'XEffects.Impact6Snd'
	ImpactSounds(2)=Sound'XEffects.Impact7Snd'
	ImpactSounds(3)=Sound'XEffects.Impact3'
	ImpactSounds(4)=Sound'XEffects.Impact1'
	ImpactSounds(5)=Sound'XEffects.Impact2'
	Speed=30000.000000
	MaxSpeed=50000.000000
	Damage=30.000000
	DamageRadius=200
	MomentumTransfer=10000.000000
	MyDamageType=Class'Onslaught.DamTypeONSChainGun'
	DrawType=DT_StaticMesh
	CullDistance=3000.000000
	LifeSpan=2.700000
	DrawScale=1.000000
	AmbientGlow=254
	Style=STY_Alpha
	bBounce=True
}

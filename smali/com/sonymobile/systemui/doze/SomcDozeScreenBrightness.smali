.class public Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;
.super Ljava/lang/Object;
.source "SomcDozeScreenBrightness.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final mAodBrightnessBright:I

.field private final mAodBrightnessDark:I

.field private final mAodScrimOpacity:I

.field private final mBrightnessSwitchLuxToBright:I

.field private final mBrightnessSwitchLuxToDark:I

.field private final mContext:Landroid/content/Context;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private final mHandler:Landroid/os/Handler;

.field private mLastAodBrightness:I

.field private mLatestSensorValue:I

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mPaused:Z

.field private mPreviousSensorValue:I

.field private mRegistered:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mPaused:Z

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLatestSensorValue:I

    .line 49
    iput v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mPreviousSensorValue:I

    .line 50
    iput v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLastAodBrightness:I

    .line 57
    iput-object p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 59
    iput-object p3, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    .line 60
    iput-object p4, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLightSensor:Landroid/hardware/Sensor;

    .line 61
    iput-object p5, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 62
    iput-object p6, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mHandler:Landroid/os/Handler;

    .line 64
    iget-object p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 65
    sget p2, Lcom/android/systemui/R$integer;->config_aodBrightnessSwitchToDark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mBrightnessSwitchLuxToDark:I

    .line 66
    sget p2, Lcom/android/systemui/R$integer;->config_aodBrightnessSwitchToBright:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mBrightnessSwitchLuxToBright:I

    .line 67
    sget p2, Lcom/android/systemui/R$integer;->config_aodScreenBrightnessDark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mAodBrightnessDark:I

    .line 68
    sget p2, Lcom/android/systemui/R$integer;->config_aodScreenBrightnessBright:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mAodBrightnessBright:I

    .line 69
    sget p2, Lcom/android/systemui/R$integer;->config_aodScrimOpacity:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mAodScrimOpacity:I

    .line 71
    iget p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mAodBrightnessBright:I

    iput p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLastAodBrightness:I

    .line 72
    iput-object p7, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method

.method private computeBrightness(II)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 161
    :cond_0
    iget v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mAodBrightnessDark:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mBrightnessSwitchLuxToBright:I

    if-ge v0, p1, :cond_1

    .line 163
    iget p0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mAodBrightnessBright:I

    return p0

    .line 164
    :cond_1
    iget v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mBrightnessSwitchLuxToDark:I

    if-le v0, p1, :cond_2

    .line 165
    iget p0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mAodBrightnessDark:I

    return p0

    :cond_2
    return p2
.end method

.method private computeScrimOpacity(I)I
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 154
    :cond_0
    iget p0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mAodScrimOpacity:I

    return p0
.end method

.method private resetBrightnessToDefault()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iget v1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLastAodBrightness:I

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    .line 176
    iget-object p0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    return-void
.end method

.method private setLightSensorEnabled(Z)V
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 180
    iget-boolean v1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mRegistered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mRegistered:Z

    .line 184
    iput v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLatestSensorValue:I

    .line 185
    iput v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mPreviousSensorValue:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 186
    iget-boolean p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mRegistered:Z

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 188
    iput-boolean p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mRegistered:Z

    .line 189
    iput v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLatestSensorValue:I

    .line 190
    iput v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mPreviousSensorValue:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setPaused(Z)V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mPaused:Z

    if-eq v0, p1, :cond_0

    .line 197
    iput-boolean p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mPaused:Z

    .line 198
    invoke-direct {p0}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->updateBrightnessAndReady()V

    :cond_0
    return-void
.end method

.method private updateBrightnessAndReady()V
    .locals 3

    .line 120
    iget-boolean v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 121
    iget v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLatestSensorValue:I

    iget v2, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLastAodBrightness:I

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->computeBrightness(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 124
    iget-object v2, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v2, v0}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    .line 125
    iput v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLastAodBrightness:I

    :cond_1
    const/4 v0, -0x1

    .line 130
    iget-boolean v2, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mPaused:Z

    if-eqz v2, :cond_2

    const/16 v0, 0xff

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 138
    iget v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLatestSensorValue:I

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->computeScrimOpacity(I)I

    move-result v0

    :cond_3
    :goto_0
    if-ltz v0, :cond_4

    .line 141
    iget-object p0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SomcDozeScreenBrightness.onSensorChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->mLatestSensorValue:I

    .line 110
    invoke-direct {p0}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->updateBrightnessAndReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    .line 80
    sget-object p1, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->setLightSensorEnabled(Z)V

    goto :goto_0

    .line 92
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->setLightSensorEnabled(Z)V

    .line 93
    invoke-direct {p0}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->resetBrightnessToDefault()V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->setLightSensorEnabled(Z)V

    goto :goto_0

    .line 86
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->setLightSensorEnabled(Z)V

    goto :goto_0

    .line 82
    :pswitch_4
    invoke-direct {p0}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->resetBrightnessToDefault()V

    .line 99
    :goto_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, p1, :cond_1

    .line 100
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/doze/SomcDozeScreenBrightness;->setPaused(Z)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

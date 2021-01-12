.class Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterSoundController"
.end annotation


# instance fields
.field private mCameraAvailabilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Landroid/hardware/camera2/CameraManager;

.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 1

    .line 514
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCameraAvailabilityMap:Ljava/util/Map;

    .line 516
    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCm:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method private areAllCamerasAvailable()Z
    .locals 1

    .line 561
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCameraAvailabilityMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private hasCameraDevices()Z
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCameraAvailabilityMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private refreshCameraIdList()V
    .locals 7

    .line 532
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCameraAvailabilityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCm:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 535
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 536
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCameraAvailabilityMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCameraAvailabilityMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->areAllCamerasAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 556
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCm:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 1

    .line 548
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->play(I)V

    .line 549
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCm:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public playIfCameraIsInUse()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCm:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    .line 522
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 523
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->refreshCameraIdList()V

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->hasCameraDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ShutterSoundController;->mCm:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.class Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;
.super Ljava/lang/Object;
.source "Rev5SkinGlueFactory.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkinManagerServiceConnection"
.end annotation


# static fields
.field private static final SHARED_PROCESSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsBound:Z

.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/sonymobile/runtimeskinning/ISkinManager;

.field private final mSkinGlues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonymobile/runtimeskinning/SkinGlue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.android.systemui"

    .line 464
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->SHARED_PROCESSES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mSkinGlues:Ljava/util/Set;

    .line 475
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mIsBound:Z

    .line 498
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindLocked()V
    .locals 8

    .line 549
    iget-boolean v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mIsBound:Z

    if-eqz v0, :cond_0

    return-void

    .line 555
    :cond_0
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->SHARED_PROCESSES:Ljava/util/List;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 558
    :try_start_0
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$500()Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Landroid/os/UserHandle;

    invoke-static {v2, v0, v3}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 560
    :try_start_1
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$600()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mContext:Landroid/content/Context;

    const-class v4, Ljava/lang/Boolean;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 561
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->getServiceIntent()Landroid/content/Intent;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object p0, v5, v1

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x3

    aput-object v2, v5, v1

    .line 560
    invoke-static {v0, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mIsBound:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 563
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to bind to service as user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkinGlueRev5-connection"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->getServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mIsBound:Z

    .line 570
    :goto_1
    iget-boolean v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mIsBound:Z

    if-nez v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    return-void
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 3

    .line 642
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 643
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sonymobile.runtimeskinning.core"

    const-string v2, "com.sonymobile.runtimeskinning.manager.SkinManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 646
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method private unbindLocked()V
    .locals 1

    .line 595
    iget-boolean v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 597
    iput-boolean v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mIsBound:Z

    :cond_0
    const/4 v0, 0x0

    .line 599
    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mService:Lcom/sonymobile/runtimeskinning/ISkinManager;

    .line 600
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/sonymobile/runtimeskinning/SkinGlue;)V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mSkinGlues:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->bindLocked()V

    .line 541
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getService()Lcom/sonymobile/runtimeskinning/ISkinManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 618
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 623
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mIsBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mService:Lcom/sonymobile/runtimeskinning/ISkinManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 626
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "SkinGlueRev5-connection"

    const-string v2, "Interrupted while trying to retrieve ISkinManager"

    .line 628
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mService:Lcom/sonymobile/runtimeskinning/ISkinManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 632
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 619
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getService is not allowed to run on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 507
    iget-object p1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 508
    :try_start_0
    invoke-static {p2}, Lcom/sonymobile/runtimeskinning/ISkinManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/runtimeskinning/ISkinManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mService:Lcom/sonymobile/runtimeskinning/ISkinManager;

    .line 509
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$200()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "SkinGlueRev5-connection"

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mService:Lcom/sonymobile/runtimeskinning/ISkinManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 514
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 523
    iget-object p1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 524
    :try_start_0
    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mService:Lcom/sonymobile/runtimeskinning/ISkinManager;

    .line 525
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$200()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SkinGlueRev5-connection"

    const-string v0, "onServiceDisconnected mService=null"

    .line 526
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unbind(Lcom/sonymobile/runtimeskinning/SkinGlue;)V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mSkinGlues:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 584
    iget-object p1, p0, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->mSkinGlues:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->unbindLocked()V

    .line 587
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class public Lcom/android/systemui/recents/LegacyRecentsImpl;
.super Ljava/lang/Object;
.source "LegacyRecentsImpl.java"

# interfaces
.implements Lcom/android/systemui/recents/RecentsImplementation;


# static fields
.field public static final RECENTS_ACTIVITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

.field private static sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private static sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImpl:Lcom/android/systemui/recents/RecentsImpl;

.field private final mOnConnectRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

.field private mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

.field private mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

.field private final mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mUserToSystemServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->RECENTS_ACTIVITIES:Ljava/util/Set;

    .line 86
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->RECENTS_ACTIVITIES:Ljava/util/Set;

    const-string v1, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mOnConnectRunnables:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Lcom/android/systemui/recents/LegacyRecentsImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/LegacyRecentsImpl$1;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    .line 133
    new-instance v0, Lcom/android/systemui/recents/LegacyRecentsImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/LegacyRecentsImpl$2;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mUserToSystemServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/LegacyRecentsImpl;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/recents/LegacyRecentsImpl;Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object p1
.end method

.method static synthetic access$100()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/LegacyRecentsImpl;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->registerWithSystemUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/LegacyRecentsImpl;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/LegacyRecentsImpl;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/LegacyRecentsImpl;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->runAndFlushOnConnectRunnables()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/LegacyRecentsImpl;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/LegacyRecentsImpl;)Lcom/android/systemui/recents/RecentsImpl;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    return-object p0
.end method

.method private getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 743
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

    invoke-interface {p0, p1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    .line 182
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;
    .locals 1

    .line 186
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    return-object v0
.end method

.method private static getMetricsCounterForResizeMode(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "window_enter_incompatible"

    return-object p0

    :cond_0
    const-string p0, "window_enter_unsupported"

    return-object p0

    :cond_1
    const-string p0, "window_enter_supported"

    return-object p0
.end method

.method public static getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .line 178
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public static getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    .line 173
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method static synthetic lambda$onBusEvent$0(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 0

    .line 679
    invoke-virtual {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    return-void
.end method

.method static synthetic lambda$onBusEvent$1(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 0

    .line 681
    invoke-virtual {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    return-void
.end method

.method public static logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 1

    if-nez p2, :cond_0

    const/16 v0, 0x187

    .line 427
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 429
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getMetricsCounterForResizeMode(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private postToSystemUser(Ljava/lang/Runnable;)V
    .locals 5

    .line 709
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    if-nez p1, :cond_0

    .line 711
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 712
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/recents/RecentsSystemUserService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 713
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mUserToSystemServiceConnection:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    const v0, 0x8cdc

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 716
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    sget-object v2, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 717
    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 715
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-nez p1, :cond_1

    .line 720
    iget-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/recents/LegacyRecentsImpl$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/LegacyRecentsImpl$11;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->runAndFlushOnConnectRunnables()V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerWithSystemUser()V
    .locals 2

    .line 690
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 691
    new-instance v1, Lcom/android/systemui/recents/LegacyRecentsImpl$10;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/LegacyRecentsImpl$10;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->postToSystemUser(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runAndFlushOnConnectRunnables()V
    .locals 2

    .line 736
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 737
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 739
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public cancelPreloadRecentApps()V
    .locals 3

    .line 349
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 350
    sget-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->cancelPreloadingRecents()V

    goto :goto_0

    .line 353
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz p0, :cond_2

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object p0

    const-string v1, "Recents"

    if-eqz p0, :cond_1

    .line 358
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->cancelPreloadingRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Callback failed"

    .line 360
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 363
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No SystemUI callbacks found for user: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Recents"

    .line 748
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getSystemUserCallbacks()Landroid/os/IBinder;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    return-object p0
.end method

.method public growRecents()V
    .locals 1

    .line 239
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 2

    .line 276
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 277
    sget-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->hideRecents(ZZ)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz p0, :cond_2

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object p0

    const-string v1, "Recents"

    if-eqz p0, :cond_1

    .line 285
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->hideRecents(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Callback failed"

    .line 287
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 290
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No SystemUI callbacks found for user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onAppTransitionFinished()V
    .locals 2

    .line 446
    invoke-static {}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-nez p0, :cond_0

    .line 448
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->onBootCompleted()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;)V
    .locals 1

    .line 508
    invoke-static {}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object p1

    .line 509
    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 510
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 511
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onDockedFirstAnimationFrame()V

    goto :goto_0

    .line 516
    :cond_0
    new-instance p1, Lcom/android/systemui/recents/LegacyRecentsImpl$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/recents/LegacyRecentsImpl$4;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->postToSystemUser(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2

    .line 572
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 573
    sget-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onDockedTopTask()V

    goto :goto_0

    .line 579
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/LegacyRecentsImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl$7;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->postToSystemUser(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;->setWaitingForTransitionStart(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 1

    .line 593
    sget-object p1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result p1

    .line 594
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 595
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onRecentsActivityStarting()V

    goto :goto_0

    .line 600
    :cond_0
    new-instance p1, Lcom/android/systemui/recents/LegacyRecentsImpl$8;

    invoke-direct {p1, p0}, Lcom/android/systemui/recents/LegacyRecentsImpl$8;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->postToSystemUser(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ExpandPipEvent;)V
    .locals 0

    .line 665
    const-class p1, Lcom/android/systemui/pip/PipUI;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pip/PipUI;

    if-nez p0, :cond_0

    return-void

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipUI;->expandPip()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 2

    .line 673
    const-class v0, Lcom/android/systemui/pip/PipUI;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pip/PipUI;

    if-nez p0, :cond_0

    return-void

    .line 677
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 678
    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$LegacyRecentsImpl$xO5R_It_ITxWKfmHT1Sjzqunw6k;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/-$$Lambda$LegacyRecentsImpl$xO5R_It_ITxWKfmHT1Sjzqunw6k;-><init>(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$LegacyRecentsImpl$PEWxOvtbk_wgSc2hdB0_I8K7cyg;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/-$$Lambda$LegacyRecentsImpl$PEWxOvtbk_wgSc2hdB0_I8K7cyg;-><init>(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pip/PipUI;->hidePipMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 683
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 3

    .line 481
    invoke-static {}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    .line 483
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->applicationContext:Landroid/content/Context;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->onVisibilityChanged(Landroid/content/Context;Z)V

    goto :goto_0

    .line 486
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/LegacyRecentsImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl$3;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 502
    :goto_0
    iget-boolean p1, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-nez p1, :cond_1

    .line 503
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;->setWaitingForTransitionStart(Z)V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .locals 2

    .line 533
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 534
    sget-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, p1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->applicationContext:Landroid/content/Context;

    iget p1, p1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->taskId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/RecentsImpl;->onStartScreenPinning(Landroid/content/Context;I)V

    goto :goto_0

    .line 537
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/LegacyRecentsImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl$5;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->postToSystemUser(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;)V
    .locals 2

    .line 646
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 647
    sget-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-boolean p1, p1, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;->waitingForTransitionStart:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;->setWaitingForTransitionStart(Z)V

    goto :goto_0

    .line 650
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/LegacyRecentsImpl$9;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl$9;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->postToSystemUser(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ShowUserToastEvent;)V
    .locals 2

    .line 625
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 626
    sget-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget v0, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgResId:I

    iget p1, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgLength:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/RecentsImpl;->onShowCurrentUserToast(II)V

    goto :goto_0

    .line 629
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz p0, :cond_2

    .line 631
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object p0

    const-string v1, "Recents"

    if-eqz p0, :cond_1

    .line 634
    :try_start_0
    iget v0, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgResId:I

    iget p1, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgLength:I

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->showCurrentUserToast(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Callback failed"

    .line 636
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 639
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No SystemUI callbacks found for user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 1

    .line 551
    sget-object p1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result p1

    .line 552
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onRecentsDrawn()V

    goto :goto_0

    .line 558
    :cond_0
    new-instance p1, Lcom/android/systemui/recents/LegacyRecentsImpl$6;

    invoke-direct {p1, p0}, Lcom/android/systemui/recents/LegacyRecentsImpl$6;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->postToSystemUser(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 457
    sget-object p1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result p1

    .line 458
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    goto :goto_0

    .line 461
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz p0, :cond_2

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object p0

    const-string v0, "Recents"

    if-eqz p0, :cond_1

    .line 466
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onConfigurationChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Callback failed"

    .line 468
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 471
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No SystemUI callbacks found for user: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onStart(Landroid/content/Context;Lcom/android/systemui/SysUiServiceProvider;)V
    .locals 6

    .line 191
    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

    .line 193
    iget-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 194
    iget-object p2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f060188

    .line 195
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 196
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f06018c

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 198
    const-class v1, Lcom/android/systemui/recents/Recents;

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/Recents;

    const-class v2, Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 199
    new-instance v1, Lcom/android/systemui/recents/RecentsDebugFlags;

    invoke-direct {v1}, Lcom/android/systemui/recents/RecentsDebugFlags;-><init>()V

    sput-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    .line 200
    iget-object v1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 201
    new-instance v1, Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 202
    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoader;

    iget-object v2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0016

    .line 204
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0b0015

    .line 205
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0b0078

    .line 206
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 207
    sget-object p1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->setDefaultColors(II)V

    .line 208
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance p1, Lcom/android/systemui/recents/RecentsImpl;

    iget-object p2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/recents/RecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    .line 212
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 213
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 214
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 219
    sget-object p1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result p1

    .line 220
    sget-object p2, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p2, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    new-instance p1, Lcom/android/systemui/recents/RecentsSystemUser;

    iget-object p2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/recents/RecentsSystemUser;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->registerWithSystemUser()V

    :goto_0
    return-void
.end method

.method public preloadRecentApps()V
    .locals 3

    .line 327
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 328
    sget-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->preloadRecents()V

    goto :goto_0

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz p0, :cond_2

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object p0

    const-string v1, "Recents"

    if-eqz p0, :cond_1

    .line 336
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->preloadRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Callback failed"

    .line 338
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 341
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No SystemUI callbacks found for user: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 5

    .line 247
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 248
    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->growsRecents()I

    move-result v0

    .line 249
    sget-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 250
    sget-object v2, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 251
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {p0, p1, v4, v3, v0}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZI)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz p0, :cond_2

    .line 256
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object p0

    const-string v2, "Recents"

    if-eqz p0, :cond_1

    .line 259
    :try_start_0
    invoke-interface {p0, p1, v4, v3, v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->showRecents(ZZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Callback failed"

    .line 262
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 265
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No SystemUI callbacks found for user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public splitPrimaryTask(ILandroid/graphics/Rect;I)Z
    .locals 7

    .line 371
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 373
    iget-object p2, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    .line 374
    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 375
    new-instance p2, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p2, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 378
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 380
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 382
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v1

    .line 384
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v6

    :goto_2
    if-eqz v2, :cond_9

    if-nez v3, :cond_9

    if-nez v4, :cond_9

    .line 388
    iget-object v3, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/recents/LegacyRecentsImpl;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 389
    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-eqz v3, :cond_8

    const/4 v1, -0x1

    if-eq p3, v1, :cond_4

    .line 391
    iget-object v1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 392
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-static {v1, p3, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 394
    :cond_4
    sget-object p3, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p3, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 395
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget p3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->splitPrimaryTask(IILandroid/graphics/Rect;)V

    goto :goto_3

    .line 397
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz p0, :cond_7

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object p0

    const-string p3, "Recents"

    if-eqz p0, :cond_6

    .line 402
    :try_start_0
    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->splitPrimaryTask(IILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "Callback failed"

    .line 405
    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 408
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No SystemUI callbacks found for user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return v6

    .line 415
    :cond_8
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;

    const p2, 0x7f11027c

    invoke-direct {p1, p2, v1}, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_9
    return v1
.end method

.method public toggleRecentApps()V
    .locals 3

    .line 301
    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->growsRecents()I

    move-result v0

    .line 302
    sget-object v1, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 303
    sget-object v2, Lcom/android/systemui/recents/LegacyRecentsImpl;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz p0, :cond_2

    .line 308
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object p0

    const-string v2, "Recents"

    if-eqz p0, :cond_1

    .line 311
    :try_start_0
    invoke-interface {p0, v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->toggleRecents(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Callback failed"

    .line 313
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 316
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No SystemUI callbacks found for user: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

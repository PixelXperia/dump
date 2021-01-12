.class public Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;
.super Ljava/lang/Object;
.source "LockscreenStyleCoverController.java"


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mObserverRunnable:Ljava/lang/Runnable;

.field private final mObseverHandler:Landroid/os/Handler;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStyleCoverObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mCallbacks:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mObseverHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$1;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mStyleCoverObserver:Landroid/database/ContentObserver;

    .line 92
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController$2;-><init>(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mObserverRunnable:Ljava/lang/Runnable;

    .line 64
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mContext:Landroid/content/Context;

    .line 65
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mObserverRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mObseverHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 1

    .line 108
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 109
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 112
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mStyleCoverObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 113
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mStyleCoverObserver:Landroid/database/ContentObserver;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 114
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mResolver:Landroid/content/ContentResolver;

    const-string p2, "somc.cover_closed"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mStyleCoverObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public isStyleCoverClosed()Z
    .locals 2

    .line 132
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "somc.cover_closed"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public isStyleCoverViewSelected()Z
    .locals 2

    .line 123
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "somc.choice_cover_type"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStyleCoverViewSelectedAndClosed()Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->isStyleCoverViewSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->isStyleCoverClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerCallback(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->removeCallback(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

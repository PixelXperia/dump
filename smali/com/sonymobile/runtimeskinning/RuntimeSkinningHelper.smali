.class public Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;
.super Ljava/lang/Object;
.source "RuntimeSkinningHelper.java"


# static fields
.field private static final FACTORIES:[Lcom/sonymobile/runtimeskinning/SkinGlueFactory;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonymobile/runtimeskinning/SkinGlueFactory;

    .line 26
    new-instance v1, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;

    invoke-direct {v1}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory;

    invoke-direct {v1}, Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;

    invoke-direct {v1}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;

    invoke-direct {v1}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;

    invoke-direct {v1}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;

    invoke-direct {v1}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->FACTORIES:[Lcom/sonymobile/runtimeskinning/SkinGlueFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->init(Landroid/content/Context;)V

    .line 250
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    return-object p0
.end method

.method public getSkinnedResourcesForCurrentSkin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object p0

    .line 300
    invoke-interface {p0, p1, p2, p3}, Lcom/sonymobile/runtimeskinning/SkinGlue;->getSkinnedResourcesForCurrentSkin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 302
    instance-of p1, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;

    if-nez p1, :cond_0

    .line 305
    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    .line 303
    :cond_0
    check-cast p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;

    throw p0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 69
    sget-object v0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->sContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The context doesn\'t belong to the first app that made the call"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    :goto_0
    sput-object p1, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->sContext:Landroid/content/Context;

    .line 75
    iget-object p1, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    if-nez p1, :cond_4

    .line 76
    sget-object p1, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->FACTORIES:[Lcom/sonymobile/runtimeskinning/SkinGlueFactory;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 77
    sget-object v3, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->sContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/sonymobile/runtimeskinning/SkinGlueFactory;->isApplicable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    sget-object p1, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->sContext:Landroid/content/Context;

    invoke-interface {v2, p1}, Lcom/sonymobile/runtimeskinning/SkinGlueFactory;->produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_3
    :try_start_1
    sget-object p1, Lcom/sonymobile/runtimeskinning/SkinGlue;->DISABLED:Lcom/sonymobile/runtimeskinning/SkinGlue;

    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 65
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    invoke-interface {v0}, Lcom/sonymobile/runtimeskinning/SkinGlue;->reset()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

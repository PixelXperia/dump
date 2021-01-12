.class Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;
.super Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;
.source "Rev3aSkinGlueFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;
    }
.end annotation


# static fields
.field private static sMethodIsUserSkinningAvailable:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected init()Z
    .locals 5

    .line 41
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->sMethodIsUserSkinningAvailable:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-string v1, "android.content.pm.IPackageManager"

    const-string v2, "isUserSkinningAvailable"

    .line 43
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->sMethodIsUserSkinningAvailable:Ljava/lang/reflect/Method;

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->sMethodIsUserSkinningAvailable:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;

    move-result-object p0

    return-object p0
.end method

.method public produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;
    .locals 1

    .line 33
    new-instance p1, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;-><init>(Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$1;)V

    return-object p1
.end method

.method public bridge synthetic produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory;->produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev3aSkinGlueFactory$SkinGlueRev3a;

    move-result-object p0

    return-object p0
.end method

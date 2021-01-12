.class Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;
.super Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;
.source "Rev4SkinGlueFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;
    }
.end annotation


# static fields
.field private static sMethodSetRuntimeSkin2:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected init()Z
    .locals 9

    .line 53
    sget-object v0, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->sMethodSetRuntimeSkin2:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "android.content.pm.IPackageManager"

    const-string v4, "setRuntimeSkin2"

    .line 55
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x2

    const-class v8, [I

    aput-object v8, v6, v7

    invoke-static {v1, v4, v5, v6}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->sMethodSetRuntimeSkin2:Ljava/lang/reflect/Method;

    .line 59
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;->init()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->sMethodSetRuntimeSkin2:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1

    .line 45
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->init()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;

    move-result-object p0

    return-object p0
.end method

.method public produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;
    .locals 1

    .line 37
    new-instance p1, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;-><init>(Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$1;)V

    return-object p1
.end method

.method public bridge synthetic produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;->produceInstance(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;

    move-result-object p0

    return-object p0
.end method

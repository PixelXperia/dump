.class Lcom/sonymobile/runtimeskinning/AssetManagerUtils;
.super Ljava/lang/Object;
.source "AssetManagerUtils.java"


# static fields
.field private static sAddAssetPath:Ljava/lang/reflect/Method;

.field private static sAssetManagerConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/content/res/AssetManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/sonymobile/runtimeskinning/ExceptionHandler;)I
    .locals 6

    .line 64
    sget-object v0, Lcom/sonymobile/runtimeskinning/AssetManagerUtils;->sAddAssetPath:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 65
    const-class v0, Landroid/content/res/AssetManager;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "addAssetPath"

    invoke-static {p2, v0, v5, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Lcom/sonymobile/runtimeskinning/ExceptionHandler;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/runtimeskinning/AssetManagerUtils;->sAddAssetPath:Ljava/lang/reflect/Method;

    .line 68
    :cond_0
    sget-object v0, Lcom/sonymobile/runtimeskinning/AssetManagerUtils;->sAddAssetPath:Ljava/lang/reflect/Method;

    const-class v3, Ljava/lang/Integer;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, p0, p2, v3, v1}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 70
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    return v2
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;

    invoke-direct {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;-><init>()V

    .line 38
    :try_start_0
    sget-object v1, Lcom/sonymobile/runtimeskinning/AssetManagerUtils;->sAssetManagerConstructor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 39
    const-class v1, Landroid/content/res/AssetManager;

    invoke-static {v1, v0}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getConstructor(Ljava/lang/Class;Lcom/sonymobile/runtimeskinning/ExceptionHandler;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/runtimeskinning/AssetManagerUtils;->sAssetManagerConstructor:Ljava/lang/reflect/Constructor;

    .line 43
    :cond_0
    sget-object v1, Lcom/sonymobile/runtimeskinning/AssetManagerUtils;->sAssetManagerConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1

    .line 44
    sget-object v1, Lcom/sonymobile/runtimeskinning/AssetManagerUtils;->sAssetManagerConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 51
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow()V

    const/4 v0, 0x0

    return-object v0
.end method

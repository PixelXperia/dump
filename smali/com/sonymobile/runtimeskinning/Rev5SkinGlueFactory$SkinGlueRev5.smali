.class public Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinGlueRev5;
.super Ljava/lang/Object;
.source "Rev5SkinGlueFactory.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SkinGlueRev5"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 194
    :try_start_0
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$100()Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;

    invoke-direct {v1, p1}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$102(Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;)Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;

    .line 197
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$100()Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->bind(Lcom/sonymobile/runtimeskinning/SkinGlue;)V

    return-void

    :catchall_0
    move-exception p0

    .line 197
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method getService()Lcom/sonymobile/runtimeskinning/ISkinManager;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 432
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$100()Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->getService()Lcom/sonymobile/runtimeskinning/ISkinManager;

    move-result-object p0

    return-object p0
.end method

.method public getSkinnedResourcesForCurrentSkin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;
        }
    .end annotation

    .line 344
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$200()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SkinGlueRev5"

    const-string p2, "getSkinnedResourcesForCurrentSkin"

    .line 345
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 350
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x0

    .line 351
    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v0, "android"

    .line 352
    invoke-virtual {p0, v0, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 353
    new-instance p3, Lcom/sonymobile/runtimeskinning/LegacySkinnedResources;

    .line 354
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$300()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p3, p2, p1, p0, v0}, Lcom/sonymobile/runtimeskinning/LegacySkinnedResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 356
    new-instance p1, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;

    invoke-direct {p1, p0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 419
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory;->access$100()Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinManagerServiceConnection;->unbind(Lcom/sonymobile/runtimeskinning/SkinGlue;)V

    return-void
.end method

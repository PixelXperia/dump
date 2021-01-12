.class public Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinGlueRev6;
.super Ljava/lang/Object;
.source "Rev6SkinGlueFactory.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SkinGlueRev6"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 201
    :try_start_0
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->access$100()Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;

    invoke-direct {v1, p1}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->access$102(Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;)Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;

    .line 204
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->access$100()Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;->bind(Lcom/sonymobile/runtimeskinning/SkinGlue;)V

    return-void

    :catchall_0
    move-exception p0

    .line 204
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

    .line 462
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->access$100()Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;->getService()Lcom/sonymobile/runtimeskinning/ISkinManager;

    move-result-object p0

    return-object p0
.end method

.method public getSkinnedResourcesForCurrentSkin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;
        }
    .end annotation

    .line 351
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SkinGlueRev6"

    const-string v1, "getSkinnedResourcesForCurrentSkin"

    .line 352
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinGlueRev6;->getService()Lcom/sonymobile/runtimeskinning/ISkinManager;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 364
    invoke-interface {p0}, Lcom/sonymobile/runtimeskinning/ISkinManager;->getSkinState()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string p0, "skinPackage"

    .line 366
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "enabledGroups"

    .line 367
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string v3, "overlayTargets"

    .line 369
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "overlayPaths"

    .line 370
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v3, :cond_2

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 375
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 376
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 377
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 378
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v1

    move-object v5, v2

    move-object v2, p0

    goto :goto_1

    .line 383
    :cond_3
    invoke-interface {p0}, Lcom/sonymobile/runtimeskinning/ISkinManager;->getSkin()Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    move-object v5, v1

    move-object v6, v5

    :goto_1
    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    .line 386
    invoke-static/range {v2 .. v7}, Lcom/sonymobile/runtimeskinning/SkinnedResourcesUtil;->getSkinnedResources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;

    move-result-object p0

    return-object p0

    .line 357
    :cond_4
    new-instance p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;

    const-string p1, "Failed to connect to the skin manager"

    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 1

    .line 449
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory;->access$100()Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/runtimeskinning/Rev6SkinGlueFactory$SkinManagerServiceConnection;->unbind(Lcom/sonymobile/runtimeskinning/SkinGlue;)V

    return-void
.end method

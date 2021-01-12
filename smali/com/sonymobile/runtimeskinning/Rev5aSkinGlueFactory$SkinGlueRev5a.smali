.class Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory$SkinGlueRev5a;
.super Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinGlueRev5;
.source "Rev5aSkinGlueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkinGlueRev5a"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinGlueRev5;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory$SkinGlueRev5a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSkinnedResourcesForCurrentSkin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/sonymobile/runtimeskinning/Rev5aSkinGlueFactory;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SkinGlueRev5a"

    const-string v1, "getSkinnedResourcesForCurrentSkin"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinGlueRev5;->getService()Lcom/sonymobile/runtimeskinning/ISkinManager;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 125
    invoke-interface {p0}, Lcom/sonymobile/runtimeskinning/ISkinManager;->getSkinState()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string p0, "skinPackage"

    .line 127
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "enabledGroups"

    .line 128
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string v3, "overlayTargets"

    .line 130
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "overlayPaths"

    .line 131
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v3, :cond_2

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 136
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 137
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 138
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
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

    .line 144
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

    .line 147
    invoke-static/range {v2 .. v7}, Lcom/sonymobile/runtimeskinning/SkinnedResourcesUtil;->getSkinnedResources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;

    move-result-object p0

    return-object p0

    .line 118
    :cond_4
    new-instance p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;

    const-string p1, "Failed to connect to the skin manager"

    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/sonymobile/runtimeskinning/Rev5SkinGlueFactory$SkinGlueRev5;->reset()V

    return-void
.end method

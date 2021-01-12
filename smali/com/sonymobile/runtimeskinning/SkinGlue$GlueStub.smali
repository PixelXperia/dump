.class public final Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;
.super Ljava/lang/Object;
.source "SkinGlue.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/SkinGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlueStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/runtimeskinning/SkinGlue$1;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkinnedResourcesForCurrentSkin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

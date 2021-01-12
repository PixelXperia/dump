.class Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;
.super Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;
.source "Rev4SkinGlueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkinGlueRev4"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;


# direct methods
.method private constructor <init>(Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;->this$0:Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;

    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory$SkinGlueRev3;-><init>(Lcom/sonymobile/runtimeskinning/Rev3SkinGlueFactory;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory$SkinGlueRev4;-><init>(Lcom/sonymobile/runtimeskinning/Rev4SkinGlueFactory;)V

    return-void
.end method

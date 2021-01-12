.class Lcom/sonymobile/runtimeskinning/SkinningBridge$4;
.super Landroid/content/BroadcastReceiver;
.source "SkinningBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/SkinningBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p0, "com.sonymobile.runtimeskinning.intent.extra.CALLING_USER"

    .line 271
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    if-eqz p0, :cond_7

    .line 272
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$000()I

    move-result v0

    if-eq p0, v0, :cond_0

    goto/16 :goto_1

    .line 276
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0xfdc5b9e

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v2, 0x58e735e3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.sonymobile.runtimeskinning.intent.action.DISABLE_BRIDGE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "com.sonymobile.runtimeskinning.intent.action.ENABLE_BRIDGE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v4

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 299
    :cond_4
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$500()Landroid/content/ServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 300
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$300()V

    goto :goto_1

    .line 278
    :cond_5
    invoke-static {v4, v4}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$100(ZZ)V

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->skinning_bridge_endpoint:I

    .line 281
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 286
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$200()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 287
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$200()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 288
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$300()V

    .line 293
    :cond_6
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$200()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_7

    .line 294
    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$202(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 295
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$200()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$400(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    :cond_7
    :goto_1
    return-void
.end method

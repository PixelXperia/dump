.class public Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;
.super Landroid/database/ContentObserver;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Observer"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Landroid/os/Handler;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    .line 531
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "DataRoamingSettings.RoamingHelper.Observer"

    .line 528
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final getValueFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 589
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object p1, v0

    .line 594
    :catch_1
    iget-object p2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-static {p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$2400(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 595
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 596
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-static {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$2500(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 597
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :catch_2
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 550
    invoke-static {}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2000()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: uri="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataRoamingSettings.RoamingHelper.Observer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    .line 551
    iget-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-static {p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$2100(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 552
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 553
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    .line 555
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 558
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 562
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 563
    invoke-direct {p0, p2, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->getValueFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_1

    .line 567
    iget-object p2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-static {p2, v1, p1, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1300(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 579
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2300(Lcom/sonymobile/settings/phone/DataRoamingSettings;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public register()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$1800(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->access$1700(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister()V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$1900(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

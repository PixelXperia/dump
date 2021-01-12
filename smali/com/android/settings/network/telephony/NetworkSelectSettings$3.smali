.class Lcom/android/settings/network/telephony/NetworkSelectSettings$3;
.super Landroid/database/ContentObserver;
.source "NetworkSelectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/NetworkSelectSettings;->registerDataState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Landroid/os/Handler;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$3;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 721
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$3;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1600(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$3;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    .line 722
    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1700(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 721
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 724
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$3;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 725
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$3;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$1202(Lcom/android/settings/network/telephony/NetworkSelectSettings;Z)Z

    .line 727
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$3;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 728
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$3;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$800(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: exception from dismissProgressBar "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkSelectSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

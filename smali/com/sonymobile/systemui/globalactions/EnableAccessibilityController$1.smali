.class Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;
.super Landroid/os/Handler;
.source "EnableAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 66
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p1}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$200(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)V

    .line 77
    iget-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p1}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$300(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/media/Ringtone;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    .line 78
    iget-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p1}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$400(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)V

    .line 79
    iget-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p1}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$100(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$000(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_enabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p1}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$000(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->enable_accessibility_canceled:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$100(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object p0

    invoke-virtual {p0, p1, v2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p1}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$000(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->continue_to_enable_accessibility:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$1;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$100(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object p0

    invoke-virtual {p0, p1, v2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :goto_0
    return-void
.end method

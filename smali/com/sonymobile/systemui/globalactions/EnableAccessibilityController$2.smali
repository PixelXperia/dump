.class Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$2;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
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

    .line 107
    iput-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$2;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$2;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p1}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$500(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController$2;->this$0:Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;

    invoke-static {p0}, Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;->access$100(Lcom/sonymobile/systemui/globalactions/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object p0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    return-void
.end method

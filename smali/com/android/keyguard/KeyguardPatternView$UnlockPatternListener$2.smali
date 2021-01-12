.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$2;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternChecked(IZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$2;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 392
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$2;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.class Lcom/android/vendorsettings/aG;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/vendorsettings/aG;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/vendorsettings/aG;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eM:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 653
    return-void
.end method

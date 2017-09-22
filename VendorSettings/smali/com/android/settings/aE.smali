.class Lcom/android/vendorsettings/aE;
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
    .line 368
    iput-object p1, p0, Lcom/android/vendorsettings/aE;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/vendorsettings/aE;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->clearPattern()V

    .line 371
    return-void
.end method

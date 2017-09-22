.class Lcom/android/vendorsettings/aS;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/vendorsettings/aS;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/vendorsettings/aS;->fO:Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/vendorsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/vendorsettings/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->clearPattern()V

    .line 349
    return-void
.end method

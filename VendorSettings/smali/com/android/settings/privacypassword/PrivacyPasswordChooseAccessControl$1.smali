.class Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl$1;
.super Ljava/lang/Object;
.source "PrivacyPasswordChooseAccessControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic anu:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl$1;->anu:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl$1;->anu:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object v0, v0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/vendorsettings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LockPatternView;->clearPattern()V

    .line 129
    return-void
.end method

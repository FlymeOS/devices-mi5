.class Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$5;
.super Landroid/database/ContentObserver;
.source "PrivacyPasswordConfirmAccessControl.java"


# instance fields
.field final synthetic aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->aoi:Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v2}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordConfirmAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordUtils;->a(JLandroid/content/Context;)V

    .line 214
    return-void
.end method

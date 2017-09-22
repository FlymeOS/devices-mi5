.class Lcom/android/vendorsettings/display/M;
.super Ljava/lang/Object;
.source "ScreenTimeoutDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ZU:Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/vendorsettings/display/M;->ZU:Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/display/M;->ZU:Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;->a(Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/vendorsettings/display/M;->ZU:Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;->a(Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/display/M;->ZU:Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v1}, Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 87
    iget-object v0, p0, Lcom/android/vendorsettings/display/M;->ZU:Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenTimeoutDialogActivity;->finish()V

    .line 88
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

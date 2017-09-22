.class Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$4;
.super Ljava/lang/Object;
.source "MiuiSmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ky:Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$4;->Ky:Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$4;->Ky:Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->b(Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$4;->Ky:Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog$4;->Ky:Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/MiuiSmsDefaultDialog;->setResult(I)V

    .line 101
    return-void
.end method

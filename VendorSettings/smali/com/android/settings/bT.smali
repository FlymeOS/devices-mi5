.class Lcom/android/vendorsettings/bT;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettingsSetupWizard.java"


# instance fields
.field final synthetic iY:Lcom/android/vendorsettings/DateTimeSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DateTimeSettingsSetupWizard;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/vendorsettings/bT;->iY:Lcom/android/vendorsettings/DateTimeSettingsSetupWizard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/vendorsettings/bT;->iY:Lcom/android/vendorsettings/DateTimeSettingsSetupWizard;

    invoke-static {v0}, Lcom/android/vendorsettings/DateTimeSettingsSetupWizard;->a(Lcom/android/vendorsettings/DateTimeSettingsSetupWizard;)V

    .line 325
    return-void
.end method

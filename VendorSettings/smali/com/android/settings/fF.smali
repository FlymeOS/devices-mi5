.class Lcom/android/vendorsettings/fF;
.super Ljava/lang/Object;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic uM:Lcom/android/vendorsettings/MonitoringCertInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MonitoringCertInfoActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/vendorsettings/fF;->uM:Lcom/android/vendorsettings/MonitoringCertInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/fF;->uM:Lcom/android/vendorsettings/MonitoringCertInfoActivity;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MonitoringCertInfoActivity;->finish()V

    .line 76
    return-void
.end method

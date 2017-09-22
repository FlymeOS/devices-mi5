.class Lcom/android/settings/fF;
.super Ljava/lang/Object;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic uM:Lcom/android/settings/MonitoringCertInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/MonitoringCertInfoActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/fF;->uM:Lcom/android/settings/MonitoringCertInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/fF;->uM:Lcom/android/settings/MonitoringCertInfoActivity;

    invoke-virtual {v0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    .line 76
    return-void
.end method

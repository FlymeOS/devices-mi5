.class Lcom/android/vendorsettings/print/a;
.super Ljava/lang/Object;
.source "PrintJobSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# instance fields
.field final synthetic amg:Lcom/android/vendorsettings/print/PrintJobSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/print/PrintJobSettingsFragment;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/vendorsettings/print/a;->amg:Lcom/android/vendorsettings/print/PrintJobSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/print/a;->amg:Lcom/android/vendorsettings/print/PrintJobSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->a(Lcom/android/vendorsettings/print/PrintJobSettingsFragment;)V

    .line 60
    return-void
.end method

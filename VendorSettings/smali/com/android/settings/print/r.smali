.class Lcom/android/vendorsettings/print/r;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# instance fields
.field final synthetic amH:Lcom/android/vendorsettings/print/q;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/print/q;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/vendorsettings/print/r;->amH:Lcom/android/vendorsettings/print/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/vendorsettings/print/r;->amH:Lcom/android/vendorsettings/print/q;

    invoke-static {v0}, Lcom/android/vendorsettings/print/q;->a(Lcom/android/vendorsettings/print/q;)V

    .line 565
    return-void
.end method

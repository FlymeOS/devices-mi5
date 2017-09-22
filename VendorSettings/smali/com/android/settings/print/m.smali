.class Lcom/android/vendorsettings/print/m;
.super Landroid/os/Handler;
.source "PrintSettingsFragment.java"


# instance fields
.field final synthetic amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/print/PrintSettingsFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/vendorsettings/print/m;->amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/print/m;->amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/print/PrintSettingsFragment;->a(Lcom/android/vendorsettings/print/PrintSettingsFragment;)V

    .line 112
    return-void
.end method

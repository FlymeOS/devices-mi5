.class Lcom/android/vendorsettings/print/n;
.super Lcom/android/vendorsettings/print/s;
.source "PrintSettingsFragment.java"


# instance fields
.field final synthetic amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/print/PrintSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/vendorsettings/print/n;->amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-direct {p0, p2}, Lcom/android/vendorsettings/print/s;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/vendorsettings/print/n;->amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/print/PrintSettingsFragment;->a(Lcom/android/vendorsettings/print/PrintSettingsFragment;)V

    .line 120
    return-void
.end method

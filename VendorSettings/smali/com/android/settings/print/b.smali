.class Lcom/android/vendorsettings/print/b;
.super Lcom/android/vendorsettings/print/l;
.source "PrintServiceSettingsFragment.java"


# instance fields
.field final synthetic amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/vendorsettings/print/b;->amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;

    invoke-direct {p0, p2}, Lcom/android/vendorsettings/print/l;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/vendorsettings/print/b;->amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;->a(Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;)V

    .line 99
    return-void
.end method

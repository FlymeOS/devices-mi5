.class Lcom/android/vendorsettings/b;
.super Landroid/database/ContentObserver;
.source "AccessControlFragment.java"


# instance fields
.field final synthetic g:Lcom/android/vendorsettings/AccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/AccessControlFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/vendorsettings/b;->g:Lcom/android/vendorsettings/AccessControlFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/vendorsettings/b;->g:Lcom/android/vendorsettings/AccessControlFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/AccessControlFragment;->a(Lcom/android/vendorsettings/AccessControlFragment;)V

    .line 44
    return-void
.end method

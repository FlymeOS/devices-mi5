.class Lcom/android/vendorsettings/d;
.super Ljava/lang/Object;
.source "AccessControlFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic g:Lcom/android/vendorsettings/AccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/AccessControlFragment;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/vendorsettings/d;->g:Lcom/android/vendorsettings/AccessControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 129
    return-void
.end method

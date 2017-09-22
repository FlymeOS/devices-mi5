.class Lmiui/external/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bsg:Lmiui/external/c;


# direct methods
.method constructor <init>(Lmiui/external/c;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lmiui/external/d;->bsg:Lmiui/external/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 65
    iget-object v0, p0, Lmiui/external/d;->bsg:Lmiui/external/c;

    invoke-virtual {v0}, Lmiui/external/c;->finish()V

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 67
    return-void
.end method

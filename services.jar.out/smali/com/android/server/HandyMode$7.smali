.class final Lcom/android/server/HandyMode$7;
.super Ljava/lang/Object;
.source "HandyMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode;->alertToEnter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newMode:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 258
    iput p1, p0, Lcom/android/server/HandyMode$7;->val$newMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 261
    iget v0, p0, Lcom/android/server/HandyMode$7;->val$newMode:I

    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 262
    return-void
.end method

.class public Lcom/miui/internal/hybrid/webkit/JsResult;
.super Lmiui/hybrid/JsResult;
.source "SourceFile"


# instance fields
.field private fQ:Landroid/webkit/JsResult;


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lmiui/hybrid/JsResult;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/JsResult;->fQ:Landroid/webkit/JsResult;

    .line 13
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/JsResult;->fQ:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 23
    return-void
.end method

.method public confirm()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/JsResult;->fQ:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 18
    return-void
.end method

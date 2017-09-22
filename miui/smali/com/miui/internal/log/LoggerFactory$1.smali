.class final Lcom/miui/internal/log/LoggerFactory$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/log/LoggerFactory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic gh:Ljava/lang/String;

.field final synthetic gi:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/miui/internal/log/LoggerFactory$1;->gh:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/internal/log/LoggerFactory$1;->gi:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/internal/log/LoggerFactory$1;->gh:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/internal/log/LoggerFactory$1;->gi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/internal/log/LoggerFactory;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.class Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$2;
.super Landroid/database/ContentObserver;
.source "ChineseTelocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;


# direct methods
.method constructor <init>(Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$2;->this$0:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 137
    const-string v0, "ChineseTelocation"

    const-string v1, "custom location changed, reloading ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$2;->this$0:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    # invokes: Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V
    invoke-static {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->access$100(Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;)V

    .line 139
    return-void
.end method

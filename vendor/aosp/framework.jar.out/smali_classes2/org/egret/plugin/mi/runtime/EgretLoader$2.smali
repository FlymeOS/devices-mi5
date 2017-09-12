.class Lorg/egret/plugin/mi/runtime/EgretLoader$2;
.super Ljava/lang/Object;
.source "EgretLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/runtime/EgretLoader;->startGame(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/egret/plugin/mi/runtime/EgretLoader;


# direct methods
.method constructor <init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader$2;->this$0:Lorg/egret/plugin/mi/runtime/EgretLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader$2;->this$0:Lorg/egret/plugin/mi/runtime/EgretLoader;

    # invokes: Lorg/egret/plugin/mi/runtime/EgretLoader;->startGameEngine()V
    invoke-static {v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->access$100(Lorg/egret/plugin/mi/runtime/EgretLoader;)V

    .line 151
    return-void
.end method

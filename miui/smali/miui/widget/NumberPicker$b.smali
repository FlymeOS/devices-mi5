.class Lmiui/widget/NumberPicker$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic Vu:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 2051
    iput-object p1, p0, Lmiui/widget/NumberPicker$b;->Vu:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2055
    iget-object v0, p0, Lmiui/widget/NumberPicker$b;->Vu:Lmiui/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;Z)Z

    .line 2056
    return-void
.end method

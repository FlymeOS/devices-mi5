.class Lmiui/widget/NumberPicker$c;
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
    name = "c"
.end annotation


# instance fields
.field private VB:Z

.field final synthetic Vu:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 2016
    iput-object p1, p0, Lmiui/widget/NumberPicker$c;->Vu:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/widget/NumberPicker$c;Z)V
    .locals 0

    .prologue
    .line 2016
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker$c;->v(Z)V

    return-void
.end method

.method private v(Z)V
    .locals 0

    .prologue
    .line 2020
    iput-boolean p1, p0, Lmiui/widget/NumberPicker$c;->VB:Z

    .line 2021
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2025
    iget-object v0, p0, Lmiui/widget/NumberPicker$c;->Vu:Lmiui/widget/NumberPicker;

    iget-boolean v1, p0, Lmiui/widget/NumberPicker$c;->VB:Z

    invoke-static {v0, v1}, Lmiui/widget/NumberPicker;->c(Lmiui/widget/NumberPicker;Z)V

    .line 2026
    iget-object v0, p0, Lmiui/widget/NumberPicker$c;->Vu:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$c;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->h(Lmiui/widget/NumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2027
    return-void
.end method

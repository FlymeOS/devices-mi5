.class public Lmiui/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final YEAR:Ljava/lang/String; = "miui:year"

.field private static final vX:Ljava/lang/String; = "miui:month"

.field private static final vY:Ljava/lang/String; = "miui:day"


# instance fields
.field private final vZ:Lmiui/widget/DatePicker;

.field private final wa:Lmiui/app/DatePickerDialog$OnDateSetListener;

.field private final wb:Lmiui/date/Calendar;

.field private wc:Z

.field private wd:Lmiui/widget/DatePicker$OnDateChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiui/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/DatePickerDialog;->wc:Z

    .line 49
    new-instance v0, Lmiui/app/DatePickerDialog$1;

    invoke-direct {v0, p0}, Lmiui/app/DatePickerDialog$1;-><init>(Lmiui/app/DatePickerDialog;)V

    iput-object v0, p0, Lmiui/app/DatePickerDialog;->wd:Lmiui/widget/DatePicker$OnDateChangedListener;

    .line 89
    iput-object p3, p0, Lmiui/app/DatePickerDialog;->wa:Lmiui/app/DatePickerDialog$OnDateSetListener;

    .line 91
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/app/DatePickerDialog;->wb:Lmiui/date/Calendar;

    .line 93
    invoke-virtual {p0}, Lmiui/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 94
    const/4 v0, -0x1

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lmiui/app/DatePickerDialog$2;

    invoke-direct {v4, p0}, Lmiui/app/DatePickerDialog$2;-><init>(Lmiui/app/DatePickerDialog;)V

    invoke-virtual {p0, v0, v3, v4}, Lmiui/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    const/4 v3, -0x2

    invoke-virtual {p0}, Lmiui/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v0}, Lmiui/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/DatePickerDialog;->setIcon(I)V

    .line 105
    const-string v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 107
    sget v2, Lcom/miui/internal/R$layout;->date_picker_dialog:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lmiui/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 109
    sget v1, Lcom/miui/internal/R$id;->datePicker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/DatePicker;

    iput-object v0, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    .line 110
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    iget-object v1, p0, Lmiui/app/DatePickerDialog;->wd:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {v0, p4, p5, p6, v1}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    .line 111
    invoke-direct {p0, p4, p5, p6}, Lmiui/app/DatePickerDialog;->d(III)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7

    .prologue
    .line 70
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/app/DatePickerDialog;-><init>(Landroid/content/Context;ILmiui/app/DatePickerDialog$OnDateSetListener;III)V

    .line 71
    return-void
.end method

.method static synthetic a(Lmiui/app/DatePickerDialog;III)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/DatePickerDialog;->d(III)V

    return-void
.end method

.method static synthetic a(Lmiui/app/DatePickerDialog;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lmiui/app/DatePickerDialog;->wc:Z

    return v0
.end method

.method static synthetic b(Lmiui/app/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/app/DatePickerDialog;->bJ()V

    return-void
.end method

.method private bJ()V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->wa:Lmiui/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Lmiui/widget/DatePicker;->clearFocus()V

    .line 149
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->wa:Lmiui/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    iget-object v2, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    invoke-virtual {v2}, Lmiui/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    invoke-virtual {v3}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    invoke-virtual {v4}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lmiui/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lmiui/widget/DatePicker;III)V

    .line 152
    :cond_0
    return-void
.end method

.method private d(III)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->wb:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 156
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->wb:Lmiui/date/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 157
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->wb:Lmiui/date/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 158
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->wb:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x3780

    invoke-static {v0, v1, v2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method


# virtual methods
.method public getDatePicker()Lmiui/widget/DatePicker;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 178
    const-string v0, "miui:year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 179
    const-string v1, "miui:month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 180
    const-string v2, "miui:day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 181
    iget-object v3, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    iget-object v4, p0, Lmiui/app/DatePickerDialog;->wd:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {v3, v0, v1, v2, v4}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    .line 182
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    const-string v1, "miui:year"

    iget-object v2, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    invoke-virtual {v2}, Lmiui/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v1, "miui:month"

    iget-object v2, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    invoke-virtual {v2}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v1, "miui:day"

    iget-object v2, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    invoke-virtual {v2}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    return-object v0
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/DatePickerDialog;->wc:Z

    .line 133
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/DatePickerDialog;->wc:Z

    .line 127
    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->vZ:Lmiui/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/widget/DatePicker;->updateDate(III)V

    .line 144
    return-void
.end method
